class Test extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {

        return (
            <div>
                {this.props.text.map((i,k)=> {
                    return <p>{i.content}</p>
                })}
            </div>
        )
    }
};