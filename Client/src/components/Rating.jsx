import React from 'react';
import Ratings from 'react-ratings-declarative';


class Rating extends React.Component {
  render() {
    let accuracy = 0;
    let communication = 0;
    let cleanliness =0;
    let location =0; 
    let checkIn =0;
    let value =0; 
    if (this.props.ratings.length > 0 && this.props.ratings[0]){
        accuracy = (this.props.ratings[0].Accuracy)
        communication = (this.props.ratings[0].Communication) 
        cleanliness = (this.props.ratings[0].Cleanliness) 
        location = (this.props.ratings[0]['Check-in'])  
        checkIn = (this.props.ratings[0].Location) 
        value = (this.props.ratings[0].value) 
    }
    return (
      // this.props.ratings.length>0 && this.props.ratings.reviews[0]
      <div> 
        <div> 
         <h3> Accuracy </h3> 
      <Ratings 
        rating={accuracy}
        widgetDimensions="50px"
        widgetSpacings="15px"
        className='Accuracy'
      >
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
      </Ratings>
      </div> 
       
       <div> 
       <h3> Communication </h3> 
      <Ratings 
        rating={communication}
        widgetDimensions="50px"
        widgetSpacings="15px"
      >
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
      </Ratings>
      </div> 

      <div> 
        <h3> Cleanliness </h3> 
      <Ratings 
      
        rating={cleanliness}
        widgetDimensions="50px"
        widgetSpacings="15px"
      >
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
      </Ratings>
      </div> 
      <div> 
      <h3> location </h3> 
      <Ratings 
        rating={location}
        widgetDimensions="50px"
        widgetSpacings="15px"
      >
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
      </Ratings>
      </div>

         <div> 
        <h3> Check-In </h3> 
      <Ratings 
        rating={checkIn}
        widgetDimensions="50px"
        widgetSpacings="15px"
      >
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
      </Ratings>
      </div>


        <div> 
        <h3> Value </h3> 
        
      <Ratings 
        rating={value}
        widgetDimensions="50px"
        widgetSpacings="15px"
      >
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="16px" />
      </Ratings>
      </div>

      </div> 
    );
  }
}

export default Rating; 
// export default RatingStars; 