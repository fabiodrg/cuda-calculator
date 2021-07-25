/*!
 * Serialize all form data into an array of key/value pairs
 * (c) 2020 Chris Ferdinandi, MIT License, https://gomakethings.com
 * @param  {Node}   form The form to serialize
 * @return {Array}       The serialized form data
 */
function serializeArray(form) {
  const arr = [];
  Array.prototype.slice.call(form.elements).forEach(function (field) {
    if (!field.name || field.disabled || ['file', 'reset', 'submit', 'button'].indexOf(field.type) > -1) {
      return;
    }
    if (field.type === 'select-multiple') {
      Array.prototype.slice.call(field.options).forEach(function (option) {
        if (!option.selected) {
          return;
        }
        arr.push({
          name: field.name,
          value: option.value
        });
      });
      return;
    }
    if (['checkbox', 'radio'].indexOf(field.type) > -1 && !field.checked) {
      return;
    }
    arr.push({
      name: field.name,
      value: field.value
    });
  });
  return arr;
}

function docReady(fn) {
  if (document.readyState === "complete" || document.readyState === "interactive") {
    setTimeout(fn, 1);  // Call on next available tick.
  } else {
    document.addEventListener("DOMContentLoaded", fn);
  }
}

function plot(x, y, currentX, currentY, xLabel, targetElement) {
  const chart = c3.generate({
    bindto: targetElement,
    data: {
      xs: {
        " ": "x",
        "Current": "x current",
      },
      columns: [
        ["x"].concat(x),
        [" "].concat(y),

        ["x current", currentX],
        ["Current", currentY],
      ],
    },
    axis: {
      x: {
        label: xLabel,
        min: 0,
        padding: {
          left: 0,
          right: 0,
        },
      },
      y: {
        label: {
          position: "outer-middle",
          text: "# warps",
        },
        min: 0,
        padding: {
          bottom: 0,
          top: 0,
        },
      },
    },
    grid: {
      y: {
        show: true,
      },
    },
    legend: {
      show: false,
    },
    padding: {
      right: 20,
    }
  });

  // To have no padding in axes but preventing the points from being dropped.
  d3.select(chart.element).select("." + c3.chart.internal.fn.CLASS.chart).attr("clip-path", null);
}

function onSubmit(e) {
  e.preventDefault();

  const formElement = e.target;

  const formData = Object.fromEntries(serializeArray(formElement).map(n => [n.name, n.value]));

  const occupancyCalculationOutput = calculateOccupancy(formData);
  const graphsValues = computeGraphsValues(formData);

  document.getElementById("output").removeAttribute("hidden");

  Object.entries(occupancyCalculationOutput)
    .forEach(([k, v]) => document.getElementById(k).innerText = v.toString());

  Object.entries(graphsValues).forEach(([k, v]) =>
    plot(v.data.map(d => d.key), v.data.map(d => d.value), v.current.key, v.current.value, v.xLabel,
      document.getElementById(k)));
}

function main() {
  document.getElementsByTagName("form")[0].onsubmit = onSubmit;

  // add event listener for changes on Compute Capability selector
  document.querySelector("#ccVersion").addEventListener('change', (event) => {
    // selected compute capability version
    const cc = Number.parseFloat(event.target.value);

    // get the div element with the selector for cuda version
    const $cudaVersionBlock = document.querySelector("#cudaVersion").closest("div");

    // if CC >= 8.x, show the CUDA runtime version selector, else hide it
    if (cc >= 8) {
      $cudaVersionBlock.removeAttribute("hidden");
    } else {
      $cudaVersionBlock.setAttribute("hidden", "");
    }
  });

  // set the default Compute Capability (latest version)
  const $ccSelect = document.querySelector("#ccVersion");
  $ccSelect.selectedIndex = $ccSelect.options.length - 1;
  $ccSelect.dispatchEvent(new Event('change'));
}

docReady(main);
