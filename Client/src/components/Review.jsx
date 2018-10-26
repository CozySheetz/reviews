import React from 'react';


class Review extends React.Component{ 
    constructor (props){
     super(props)
    }

    render() {
        return (
            <div>

         <div> {this.props.review.first_name}</div>
         <div>{this.props.review.overview}</div> 
         <form> <option/> </form>
            </div>

        )



    }
}

export default Review; 