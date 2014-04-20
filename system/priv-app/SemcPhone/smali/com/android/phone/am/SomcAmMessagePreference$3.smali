.class Lcom/android/phone/am/SomcAmMessagePreference$3;
.super Ljava/lang/Object;
.source "SomcAmMessagePreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmMessagePreference;->setAudioSource(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmMessagePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmMessagePreference;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/phone/am/SomcAmMessagePreference$3;->this$0:Lcom/android/phone/am/SomcAmMessagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference$3;->this$0:Lcom/android/phone/am/SomcAmMessagePreference;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmMessagePreference;->setOnError()V

    .line 280
    const/4 v0, 0x1

    return v0
.end method
