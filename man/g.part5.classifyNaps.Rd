\name{g.part5.classifyNaps}
\alias{g.part5.classifyNaps}
\title{
  Classify Naps from identified sustained inactivty bouts
}
\description{
  Classify Naps from identified sustained inactivty bouts, based on model
  that was originally trained with hip-worn accelerometer data in 3-3.5 year olds.
  Assume that metric ENMO is used and HASIB.algo is set to vanHees2015.
}
\usage{
  g.part5.classifyNaps(sibreport = c(), desiredtz = "", 
        possible_nap_window = c(9, 18),
        possible_nap_dur = c(15, 240),
        nap_model = "hip3yr", HASIB.algo = "vanHees2015")
}
\arguments{
  \item{sibreport}{
    Object generated by \link{g.sibreport}
  }
  \item{desiredtz}{
    See \link{g.getmeta}.
  }
  \item{possible_nap_window}{
    Numeric vector of length two with range in clock hours during which naps are
    assumed to take place.
  }
  \item{possible_nap_dur}{
   Numeric vector of length two with range in duration (minutes) of a nap.
  }
  \item{nap_model}{
    Character to specify classification model. Currently the only option is "hip3yr", which
    corresponds to a model trained with hip data in 3-3.5 olds trained with parent diary data.
  }
  \item{HASIB.algo}{
    See \link{g.part3}.
  }
}
\value{
  Data.frame with classified naps and newly detected non-wear periods.
}
\author{
  Vincent T van Hees <v.vanhees@accelting.com>
}