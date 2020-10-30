import React from 'react'
import { View, Text } from 'react-native'
import UneAction from './UneAction'


const ListeActions = ({ actions }) => {

    return (
        <View>
            {
                actions.map((text, i) => (
                    <UneAction action={text}/>
                ))
            }
        </View>
    )
}

export default ListeActions