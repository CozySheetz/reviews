import React from 'react';


class Review extends React.Component{ 
    constructor (props){
     super(props)
    }

    render() {
        return (
            <div className = 'style'>

        <div className= 'headerWrapper'>
        <div className='picture'> <img src= {this.props.review.picture} /></div>
         <div className='reviewName'> {this.props.review.first_name}</div>
        </div>
         <div className='overview '>{this.props.review.overview}</div> 
         <form> <option/> </form>
            </div>

        )



    }
}

export default Review; 