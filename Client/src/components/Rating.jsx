import React from 'react';
import Ratings from 'react-ratings-declarative';

class Rating extends React.Component {

  render() {
    var reviewDiv = (ratingName, ratingValue) =>  {
      return (
        <div className="container row"> 
    
          <div style={{ 'fontFamily': 'Montserrat, sans-serif' }} className=' col-5 float-left p-0'> {ratingName}  </div>
          <Ratings
            rating={ratingValue}
            widgetDimensions="80px"
            widgetSpacings="4px"
            className="col-5 float-right"
          >
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="22px" />
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="22px" />
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="22px" />
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="22px" />
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="22px" />
          </Ratings>
        </div>
      )
    }

    if (this.props.ratings.length > 0 && this.props.ratings) {
      const ratings = this.props.ratings[0];
      let values = Object.keys(ratings); 
      return (
        <div className='starWrapper' style={{  display: 'flex', justifyContent: 'center', padding:'4px'}}>
          <div className= 'rightCol' style={{  width: '50%' }}>
            {values.slice(0,3).map(ratingName => reviewDiv(ratingName, ratings[ratingName]))}
          </div>
          <div style={{ width: '50%' }}>
            {values.slice(3,6).map(ratingName => reviewDiv(ratingName, ratings[ratingName]))}
          </div>
        </div>
      );
    } else {
      return <p></p>
    }
  }
}

export default Rating; 