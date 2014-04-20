.class Lcom/android/phone/SomcTestUI$2;
.super Ljava/lang/Object;
.source "SomcTestUI.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcTestUI;->showOptionsMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcTestUI;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcTestUI;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v3, 0x6f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 222
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    # invokes: Lcom/android/phone/SomcTestUI;->update()V
    invoke-static {v0}, Lcom/android/phone/SomcTestUI;->access$400(Lcom/android/phone/SomcTestUI;)V

    .line 223
    return v1

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x65

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x66

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x6a

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 151
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x67

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 155
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x68

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 159
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x69

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 163
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x6c

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 167
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x6b

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 171
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    # setter for: Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z
    invoke-static {v0, v1}, Lcom/android/phone/SomcTestUI;->access$302(Lcom/android/phone/SomcTestUI;Z)Z

    .line 172
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v3}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 176
    :pswitch_a
    iget-object v2, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    # setter for: Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z
    invoke-static {v2, v0}, Lcom/android/phone/SomcTestUI;->access$302(Lcom/android/phone/SomcTestUI;Z)Z

    .line 177
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v3}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 181
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x6d

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 185
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x70

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 189
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x71

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto :goto_0

    .line 194
    :pswitch_e
    iget-object v2, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    move v0, v1

    :cond_0
    # setter for: Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z
    invoke-static {v2, v0}, Lcom/android/phone/SomcTestUI;->access$002(Lcom/android/phone/SomcTestUI;Z)Z

    goto/16 :goto_0

    .line 197
    :pswitch_f
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x72

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto/16 :goto_0

    .line 200
    :pswitch_10
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x73

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto/16 :goto_0

    .line 203
    :pswitch_11
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x74

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto/16 :goto_0

    .line 206
    :pswitch_12
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x75

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto/16 :goto_0

    .line 209
    :pswitch_13
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x76

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto/16 :goto_0

    .line 212
    :pswitch_14
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x77

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto/16 :goto_0

    .line 215
    :pswitch_15
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x78

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto/16 :goto_0

    .line 218
    :pswitch_16
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$2;->this$0:Lcom/android/phone/SomcTestUI;

    const/16 v2, 0x79

    # setter for: Lcom/android/phone/SomcTestUI;->mCurrentState:I
    invoke-static {v0, v2}, Lcom/android/phone/SomcTestUI;->access$202(Lcom/android/phone/SomcTestUI;I)I

    goto/16 :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
