package com.xlx.powerfuldemo.component.rocketmq;

import java.util.List;
import org.apache.rocketmq.common.message.MessageExt;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

/**
 * 消息消费者(监听消息进行消费)
 */
@Component
public class ConsumerService {

    @EventListener(condition = "#event.msgs[0].topic=='user-topic' && #event.msgs[0].tags=='white'")
    public void rocketmqMsgListener(MessageEvent event) {
        try {
            List<MessageExt> msgs = event.getMsgs();
            for (MessageExt msg : msgs) {
                System.err.println("消费消息:"+new String(msg.getBody()) + "消息id:" + msg.getMsgId());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}