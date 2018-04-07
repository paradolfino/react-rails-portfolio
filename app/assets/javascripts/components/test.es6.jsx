class Test extends React.Component {
    constructor(props) {
        super(props);
    }

    getInitialState() {
        return { items: [] };
    }

    render() {

        return (
            <div>
                {this.props.text.map((i,k)=> {
                    
                })}
            </div>
        )
    }
};