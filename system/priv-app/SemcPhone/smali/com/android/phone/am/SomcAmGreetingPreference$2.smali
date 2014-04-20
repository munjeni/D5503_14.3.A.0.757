.class Lcom/android/phone/am/SomcAmGreetingPreference$2;
.super Ljava/lang/Object;
.source "SomcAmGreetingPreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmGreetingPreference;->setAudioSource(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmGreetingPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmGreetingPreference;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingPreference$2;->this$0:Lcom/android/phone/am/SomcAmGreetingPreference;

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
    .line 146
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference$2;->this$0:Lcom/android/phone/am/SomcAmGreetingPreference;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmMessagePreference;->setOnError()V

    .line 147
    const/4 v0, 0x1

    return v0
.end method
