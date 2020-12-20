$(document).ready(() => {
  $("form").on("submit", e => {
    e.preventDefault();

    const d = {};
    $.map($("form").serializeArray(), n => d[n["name"]] = n["value"]);

    const data = calculate(d);
    const graph = calculateGraphs(d);

    const $o = $("#output").removeAttr("hidden");

    _.forEach(data, (v, k) => $o.find("[data-value=" + k + "]").text(v));

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

    $o.find("svg").remove();
    const f = $o.find("figure");
    drawGraph(gds[0], f[0]);
    drawGraph(gds[1], f[1]);
    drawGraph(gds[2], f[2]);
  });
});
