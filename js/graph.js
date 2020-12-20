function drawGraph(input, to) {
  // Implementation heavily influenced by https://bl.ocks.org/1166403

  const margins = [80, 80, 80, 80];
  const width = 1000 - margins[1] - margins[3];
  const height = 400 - margins[0] - margins[2];

  const data = input.data;
  const xData = _.pluck(data, "key");
  const yData = _.pluck(data, "value");
  const current = input.current;

  const x = d3.scaleLinear().domain([d3.min(xData), d3.max(xData)]).range([0, width]);
  const y = d3.scaleLinear().domain([0, d3.max(yData)]).range([height, 0]);

  // create a line function that can convert data[] into x and y points
  const line = d3.line()
      // assign the X function to plot our line as we wish
      .x(d => x(d.key))  // return the X coordinate where we want to plot this datapoint
      .y(d => y(d.value));  // return the Y coordinate where we want to plot this datapoint

  // Add an SVG element with the desired dimensions and margin.
  const graph = d3.select(to).append("svg:svg")
      .attr("width", width + margins[1] + margins[3])
      .attr("height", height + margins[0] + margins[2])
      .append("svg:g")
      .attr("transform", "translate(" + margins[3] + "," + margins[0] + ")");

  const xAxis = d3.axisBottom(x).tickSize(-8);
  graph.append("svg:g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + height + ")")
      .call(xAxis);

  const yAxis = d3.axisLeft(y).tickSize(-width - 20).ticks(4);
  graph.append("svg:g")
      .attr("class", "y axis")
      .attr("transform", "translate(-25,0)")
      .call(yAxis);

  // Add x axis label.
  graph.append("text")
      .attr("class", "x label")
      .attr("text-anchor", "end")
      .attr("x", width)
      .attr("y", height - 6)
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
