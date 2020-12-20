function drawGraph(input, to) {
  /* implementation heavily influenced by https://bl.ocks.org/1166403 */

  // define dimensions of graph
  const m = [80, 80, 80, 80]; // margins
  const w = 1000 - m[1] - m[3]; // width
  const h = 400 - m[0] - m[2]; // height

  // create a simple data array that we"ll plot with a line (this array represents only the Y values, X will just be the index location)
  const data = input.data;
  const xData = _.pluck(data, "key");
  const yData = _.pluck(data, "value");
  const current = input.current;

  // X scale will fit all values from data[] within pixels 0-w
  const x = d3.scale.linear().domain([d3.min(xData), d3.max(xData)]).range([0, w]);
  // Y scale will fit values from 0-10 within pixels h-0 (Note the inverted domain for the y-scale: bigger is up!)
  const y = d3.scale.linear().domain([0, d3.max(yData)]).range([h, 0]);

  // create a line function that can convert data[] into x and y points
  const line = d3.svg.line()
      // assign the X function to plot our line as we wish
      .x(d => x(d.key))  // return the X coordinate where we want to plot this datapoint
      .y(d => y(d.value));  // return the Y coordinate where we want to plot this datapoint

  // Add an SVG element with the desired dimensions and margin.
  const graph = d3.select(to).append("svg:svg")
      .attr("width", w + m[1] + m[3])
      .attr("height", h + m[0] + m[2])
      .append("svg:g")
      .attr("transform", "translate(" + m[3] + "," + m[0] + ")");

  // create xAxis
  const xAxis = d3.svg.axis().scale(x).tickSize(-8).tickSubdivide(32);
  // Add the x-axis.
  graph.append("svg:g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + h + ")")
      .call(xAxis);

  // create left yAxis
  const yAxisLeft = d3.svg.axis().scale(y).tickSize(-w - 20).tickSubdivide(true).ticks(4).orient("left");
  // Add the y-axis to the left
  graph.append("svg:g")
      .attr("class", "y axis")
      .attr("transform", "translate(-25,0)")
      .call(yAxisLeft);

  // Add x axis label.
  graph.append("text")
      .attr("class", "x label")
      .attr("text-anchor", "end")
      .attr("x", w)
      .attr("y", h - 6)
      .text(input.x_label);

  graph.append("text")
      .attr("class", "y label")
      .attr("y", 6)
      .attr("dy", ".75em")
      .attr("transform", "rotate(-90)")
      .attr("transform", "translate(-25,0)")
      .text("# warps");

  // Draw all the points
  graph.selectAll(".bar")
      .data(data)
      .enter()
      .append("circle")
      .attr("class", "bar")
      .attr("cx", d => x(d.key))
      .attr("r", 2)
      .attr("cy", d => y(d.value));

  // Add the line by appending an svg:path element with the data line we created above
  // do this AFTER the axes above so that the line is above the tick-lines
  graph.append("svg:path").attr("d", line(data));

  // Draw the current configuration point in red
  graph.selectAll(".current")
      .data([current])
      .enter()
      .append("circle")
      .attr("class", "current")
      .attr("cx", d => x(d.key))
      .attr("r", 3)
      .attr("cy", d => y(d.value));
}
