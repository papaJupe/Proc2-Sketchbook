//The Nature of Code modif 1.4 example to plot a gaussian var on Y axis, 
//evolving over time -- compared to Markov series where Y(n+1) = Y(n) +/- some gaussian


void setup()   // only want to draw once
{ 
  int timX = 0;
  float Yloc = 480;  // start pt for Markov series
  size(640, 640);
  background(0);
  while (timX < 641)
  {
    // gets a gaussian random number w/ mean of 0 and standard deviation of 1.0
    float yloc = randomGaussian();

    float sd = 30;                // standard deviation
    float mean = height/4;   // (middle of screen's top half)
    yloc = ( yloc * sd ) + mean;  // scale the gaussian by standard deviation and mean

    noStroke();
    fill(254);
    ellipse(timX, yloc, 4, 4);   // Draw small circle at "normal" random height
    timX += 2;

    // make the Markov series, Yloc starts @ 480, then goes up/down w/ gaussian*7

    Yloc += randomGaussian() * 7;
    ellipse(timX, Yloc, 4, 4);
    // draw horiz line at screen middle
    strokeWeight(2);
    stroke(200, 200, 100);  // dk yellow
    line(0, height/2, width, height/2);

  }
  //     println ("done it");
}

void draw() 
{
}


