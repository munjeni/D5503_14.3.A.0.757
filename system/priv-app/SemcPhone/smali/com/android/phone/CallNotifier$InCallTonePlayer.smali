.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .param p2, "toneId"    # I

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1556
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1557
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1558
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1559
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 1563
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1565
    :cond_0
    const/4 v8, 0x0

    .line 1568
    .local v8, "toneType":I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1570
    .local v3, "phoneType":I
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_0

    .line 1654
    :pswitch_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1572
    :pswitch_1
    const/16 v8, 0x16

    .line 1573
    const/16 v9, 0x64

    .line 1575
    .local v9, "toneVolume":I
    const v7, 0x7fffffeb

    .line 1662
    .local v7, "toneLengthMillis":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1663
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v5, 0x6

    .line 1668
    .local v5, "stream":I
    :cond_1
    :goto_1
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    .end local v5    # "stream":I
    .local v6, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_2
    const/4 v1, 0x1

    .line 1691
    .local v1, "needToStopTone":Z
    const/4 v2, 0x0

    .line 1693
    .local v2, "okToPlayTone":Z
    if-eqz v6, :cond_5

    .line 1694
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 1695
    .local v4, "ringerMode":I
    if-ne v3, v14, :cond_12

    .line 1696
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_b

    .line 1697
    if-eqz v4, :cond_3

    if-eq v4, v13, :cond_3

    .line 1699
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_2

    .line 1700
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1702
    :cond_2
    const/4 v2, 0x1

    .line 1703
    const/4 v1, 0x0

    .line 1733
    :cond_3
    :goto_3
    monitor-enter p0

    .line 1734
    if-eqz v2, :cond_4

    :try_start_1
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-eq v10, v14, :cond_4

    .line 1735
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1736
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1738
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1743
    :goto_4
    if-eqz v1, :cond_4

    .line 1744
    :try_start_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1748
    :cond_4
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 1749
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1750
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1766
    .end local v4    # "ringerMode":I
    :cond_5
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_6

    .line 1767
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)V

    .line 1769
    :cond_6
    return-void

    .line 1578
    .end local v1    # "needToStopTone":Z
    .end local v2    # "okToPlayTone":Z
    .end local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_2
    if-ne v3, v14, :cond_7

    .line 1579
    const/16 v8, 0x60

    .line 1580
    const/16 v9, 0x32

    .line 1581
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x3e8

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1582
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_7
    if-eq v3, v13, :cond_8

    const/4 v10, 0x3

    if-eq v3, v10, :cond_8

    const/4 v10, 0x4

    if-ne v3, v10, :cond_9

    .line 1585
    :cond_8
    const/16 v8, 0x11

    .line 1586
    const/16 v9, 0x64

    .line 1587
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1589
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_9
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1593
    :pswitch_3
    const/16 v8, 0x12

    .line 1594
    const/16 v9, 0x64

    .line 1595
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 1596
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1602
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_4
    const/16 v8, 0x19

    .line 1603
    const/16 v9, 0x64

    .line 1604
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x3e8

    .line 1605
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1607
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_5
    const/16 v8, 0x1b

    .line 1608
    const/16 v9, 0x64

    .line 1609
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xc8

    .line 1610
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1612
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_6
    const/16 v8, 0x56

    .line 1613
    const/16 v9, 0x64

    .line 1614
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 1615
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1617
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_7
    const/16 v8, 0x27

    .line 1618
    const/16 v9, 0x32

    .line 1619
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 1620
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1622
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_8
    const/16 v8, 0x25

    .line 1623
    const/16 v9, 0x32

    .line 1624
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1f4

    .line 1625
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1628
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_9
    const/16 v8, 0x5f

    .line 1629
    const/16 v9, 0x32

    .line 1630
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x177

    .line 1631
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1633
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_a
    const/16 v8, 0x57

    .line 1634
    const/16 v9, 0x32

    .line 1635
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 1636
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1638
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_b
    const/16 v8, 0x17

    .line 1639
    const/16 v9, 0x64

    .line 1641
    .restart local v9    # "toneVolume":I
    const v7, 0x7fffffeb

    .line 1642
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1644
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_c
    const/16 v8, 0x15

    .line 1645
    const/16 v9, 0x64

    .line 1646
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 1647
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1649
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_d
    const/16 v8, 0x1c

    .line 1650
    const/16 v9, 0x64

    .line 1651
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x3e8

    .line 1652
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1666
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "stream":I
    goto/16 :goto_1

    .line 1670
    .end local v5    # "stream":I
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    const/4 v6, 0x0

    .restart local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 1705
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "needToStopTone":Z
    .restart local v2    # "okToPlayTone":Z
    .restart local v4    # "ringerMode":I
    :cond_b
    const/16 v10, 0x60

    if-eq v8, v10, :cond_c

    const/16 v10, 0x27

    if-eq v8, v10, :cond_c

    const/16 v10, 0x25

    if-eq v8, v10, :cond_c

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_e

    .line 1709
    :cond_c
    if-eqz v4, :cond_3

    .line 1710
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_d

    .line 1711
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1713
    :cond_d
    const/4 v2, 0x1

    .line 1714
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1716
    :cond_e
    const/16 v10, 0x57

    if-eq v8, v10, :cond_f

    const/16 v10, 0x56

    if-ne v8, v10, :cond_11

    .line 1718
    :cond_f
    if-eqz v4, :cond_3

    if-eq v4, v13, :cond_3

    .line 1720
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_10

    .line 1721
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1723
    :cond_10
    const/4 v2, 0x1

    .line 1724
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1727
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1730
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1739
    :catch_1
    move-exception v0

    .line 1740
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1750
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 1772
    monitor-enter p0

    .line 1773
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1774
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1776
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1777
    monitor-exit p0

    .line 1778
    return-void

    .line 1777
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
