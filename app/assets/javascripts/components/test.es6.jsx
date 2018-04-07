class Test extends React.Component {
    constructor(props) {
        super(props);
    }

    getInitialState() {
        return { items: [] };
    }

    render() {
        contents = this.props.text.map((i)=>{
            return <p>{JSON.stringify(i.content)}</p>;
        });
        return (
            {contents}
        )
    }
};