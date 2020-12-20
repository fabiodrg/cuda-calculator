function plot(input, target_element) {
  const chart = c3.generate({
    bindto: target_element,
    data: {
      xs: {
        " ": "x",
        "Current": "x current",
      },
      columns: [
        ["x"].concat(_.pluck(input.data, "key")),
        [" "].concat(_.pluck(input.data, "value")),

        ["x current", input.current.key],
        ["Current", input.current.value],
      ],
    },
    axis: {
      x: {
        label: input.x_label,
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
      // x: {
      //   lines: [
      //     {
      //       position: "middle",
      //       text: "current",
      //       value: input.current.key,
      //     },
      //   ],
      // },
      y: {
        show: true,
      },
    },
    legend: {
      show: false,
    },
  });

  // To have no padding in axes but preventing the points from being dropped.
  d3.select(chart.element).select("." + c3.chart.internal.fn.CLASS.chart).attr("clip-path", null);

  // TODO: 2 series w diff x values
}

function onSubmit(e) {
  e.preventDefault();

  const d = {};
  $.map($("form").serializeArray(), n => d[n["name"]] = n["value"]);

  const data = calculate(d);
  const graph = calculateGraphs(d);

  const $output = $("#output").removeAttr("hidden");

  _.forEach(data, (v, k) => $output.find("[data-value=" + k + "]").text(v));

  const gds = _.map(graph, v => {
    const vs = _.values(v.current);
    const gd = {
      current: {
        key: vs[0],
        value: vs[1]
      }
    };

    gd.data = _.map(v.data, v => {
      const vs = _.values(v);
      return {
        key: vs[0],
        value: vs[1]
      }
    });
    gd.x_label = v.x_label;

    return gd;
  });

  $output.find("svg").remove();

  plot(gds[0], document.getElementById("block-chart"));
  plot(gds[1], document.getElementById("register-chart"));
  plot(gds[2], document.getElementById("memory-chart"));
}

function main() {
  $("form").on("submit", onSubmit);
}

$(document).ready(main);
