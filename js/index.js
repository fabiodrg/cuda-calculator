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
  const graphValues = computeGraphsValues(formData);

  document.getElementById("output").removeAttribute("hidden");

  Object.entries(occupancyCalculationOutput)
      .forEach(([k, v]) => document.getElementById(k).innerText = v.toString());

  const gds = Object.entries(graphValues).map(([_, v]) => {
    const vs = Object.entries(v.current).map(([_, vc]) => vc);
    console.log(vs);
    const gd = {
      current: {
        key: vs[0],
        value: vs[1]
      }
    };

    gd.data = Object.entries(v.data).map(([_, v]) => {
      const vs = Object.entries(v).map(([_, vc]) => vc);
      return {
        key: vs[0],
        value: vs[1]
      }
    });
    gd.xLabel = v.xLabel;

    return gd;
  });

  plot(gds[0].data.map(d => d.key), gds[0].data.map(d => d.value), gds[0].current.key, gds[0].current.value,
      gds[0].xLabel, document.getElementById("block-chart"));
  plot(gds[1].data.map(d => d.key), gds[1].data.map(d => d.value), gds[1].current.key, gds[1].current.value,
      gds[1].xLabel, document.getElementById("register-chart"));
  plot(gds[2].data.map(d => d.key), gds[2].data.map(d => d.value), gds[2].current.key, gds[2].current.value,
      gds[2].xLabel, document.getElementById("memory-chart"));
}

function main() {
  document.getElementsByTagName("form")[0].onsubmit = onSubmit;
}

docReady(main);
