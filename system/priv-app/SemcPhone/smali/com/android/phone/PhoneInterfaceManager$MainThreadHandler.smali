.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneInterfaceManager;
    .param p2, "x1"    # Lcom/android/phone/PhoneInterfaceManager$1;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 401
    :pswitch_0
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 157
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 158
    .local v17, "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 161
    monitor-enter v17

    .line 162
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v17

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 167
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 168
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 170
    .local v10, "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v10}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .line 174
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 175
    .local v11, "ar":Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 176
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 183
    :goto_1
    monitor-enter v17

    .line 184
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 185
    monitor-exit v17

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 180
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 189
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_0

    .line 193
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 197
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 198
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v14, 0x0

    .line 199
    .local v14, "hungUp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 200
    .local v16, "phoneType":I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    .line 211
    :goto_2
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_END_CALL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v14, :cond_5

    const-string v2, "hung up!"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 214
    :cond_1
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 216
    monitor-enter v17

    .line 217
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 218
    monitor-exit v17

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 204
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 207
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    goto :goto_2

    .line 209
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_5
    const-string v2, "no call to hang up"

    goto :goto_3

    .line 222
    .end local v14    # "hungUp":Z
    .end local v16    # "phoneType":I
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 223
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 226
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v10}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 231
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_8
    const/16 v18, 0x0

    .line 232
    .local v18, "retStatus":Z
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 233
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 235
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    .line 236
    const/16 v18, 0x1

    .line 238
    :cond_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 241
    monitor-enter v17

    .line 242
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 243
    monitor-exit v17

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 249
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v18    # "retStatus":Z
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 250
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v12, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 251
    .local v12, "arg":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 252
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget v3, v12, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    iget v4, v12, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    iget v5, v12, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    iget v6, v12, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    iget v7, v12, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    iget v8, v12, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    iget-object v9, v12, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 258
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v12    # "arg":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 259
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 260
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 261
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 278
    :cond_7
    :goto_4
    monitor-enter v17

    .line 279
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 280
    monitor-exit v17

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 266
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 269
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_7

    .line 271
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_7

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x4

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_4

    .line 286
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 287
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 288
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2, v10}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 293
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 294
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 295
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 296
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 315
    :cond_9
    :goto_5
    monitor-enter v17

    .line 316
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 317
    monitor-exit v17

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 299
    :cond_a
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 301
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_9

    .line 303
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v13

    .line 307
    .local v13, "error":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v13, v2, :cond_b

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_5

    .line 309
    :cond_b
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v13, v2, :cond_9

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x3

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_5

    .line 323
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "error":Lcom/android/internal/telephony/CommandException$Error;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 324
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 325
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v10}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 331
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 332
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 333
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_c

    .line 334
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 340
    :goto_6
    monitor-enter v17

    .line 341
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 342
    monitor-exit v17

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 337
    :cond_c
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_6

    .line 347
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 348
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 349
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v10}, Lcom/android/internal/telephony/IccCard;->getAtr(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 353
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 354
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 355
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_d

    .line 356
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 360
    :goto_7
    monitor-enter v17

    .line 361
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 362
    monitor-exit v17

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    .line 358
    :cond_d
    const-string v2, ""

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_7

    .line 367
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 368
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v15, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 370
    .local v15, "parameters":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 371
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget v4, v15, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    iget v5, v15, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    iget v6, v15, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    iget v7, v15, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    iget v8, v15, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    iget-object v9, v15, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/telephony/IccCard;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 378
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v15    # "parameters":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 379
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 380
    .restart local v17    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_f

    .line 381
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 395
    :cond_e
    :goto_8
    monitor-enter v17

    .line 396
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 397
    monitor-exit v17

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    .line 384
    :cond_f
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 386
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_e

    .line 388
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_e

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x4

    # setter for: Lcom/android/phone/PhoneInterfaceManager;->mLastSmartcardError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_8

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
