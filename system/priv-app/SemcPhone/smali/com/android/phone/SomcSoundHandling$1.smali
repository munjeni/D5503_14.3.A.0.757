.class Lcom/android/phone/SomcSoundHandling$1;
.super Ljava/lang/Object;
.source "SomcSoundHandling.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcSoundHandling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcSoundHandling;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcSoundHandling;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/SomcSoundHandling$1;->this$0:Lcom/android/phone/SomcSoundHandling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling$1;->this$0:Lcom/android/phone/SomcSoundHandling;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/phone/SomcSoundHandling;->access$002(Lcom/android/phone/SomcSoundHandling;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 53
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling$1;->this$0:Lcom/android/phone/SomcSoundHandling;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Got BluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcSoundHandling$1;->this$0:Lcom/android/phone/SomcSoundHandling;

    # getter for: Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/SomcSoundHandling;->access$000(Lcom/android/phone/SomcSoundHandling;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcSoundHandling;->access$100(Lcom/android/phone/SomcSoundHandling;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling$1;->this$0:Lcom/android/phone/SomcSoundHandling;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/SomcSoundHandling;->access$002(Lcom/android/phone/SomcSoundHandling;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 61
    return-void
.end method
