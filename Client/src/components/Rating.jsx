import React from 'react';
import Ratings from 'react-ratings-declarative';

class Rating extends React.Component {

  render() {
    var reviewDiv = (ratingName, ratingValue) =>  {
      return (
        <div className="container row" > 
          <div style={{ 'fontFamily': 'Montserrat, sans-serif', 'marginRight': '30px'}} className=' col-6 float-left p-0'> {ratingName}  </div>
          <Ratings
            rating={ratingValue}
            widgetSpacings="2px"
            className="col-5 float-right"
          >
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="14px" />
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="14px" />
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="14px" />
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="14px" />
            <Ratings.Widget widgetRatedColor="#008489" widgetDimension="14px" />
          </Ratings>
        </div>
      )
    }

    if (this.props.ratings.length > 0 && this.props.ratings) {
      const ratings = this.props.ratings[0];
      let ratingCriteria = Object.keys(ratings); 
      return (
        <div className='starWrapper' style={{  display: 'flex', justifyContent: 'center', padding:'4px'}}>
          <div className= 'rightCol' style={{  width: '50%' }}>
            {ratingCriteria.slice(0,3).map(ratingName => reviewDiv(ratingName, ratings[ratingName]))}
          </div>
          <div style={{ width: '50%' }}>
            {ratingCriteria.slice(3,6).map(ratingName => reviewDiv(ratingName, ratings[ratingName]))}
          </div>
        </div>
      );
    } else {
      return <p></p>
    }
  }
}

export default Rating; 