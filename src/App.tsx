import React from 'react';
import './App.css';
import Navbar from './components/Navbar';
import { Card } from './components/Card';

function App() {
    return (
        <div className="App">
            <Navbar />
            <Card
                title="Edmond Dantes "
                description="I wish to be Providence myself, for I feel that the most beautiful, noblest, most sublime thing in the world, is to recompense and punish."
            ></Card>
        </div>
    );
}

export default App;
