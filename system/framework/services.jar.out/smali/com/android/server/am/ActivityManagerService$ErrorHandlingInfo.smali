.class Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorHandlingInfo"
.end annotation


# instance fields
.field public mCrashLevel:I

.field public final mDebugBuild:Z

.field public mSystemAppCrash:Z

.field public mSystemCrash:Z

.field public mSystemDump:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 16783
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16784
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mDebugBuild:Z

    .line 16785
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mSystemDump:Z

    .line 16786
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mCrashLevel:I

    .line 16787
    return-void

    :cond_1
    move v0, v1

    .line 16784
    goto :goto_0
.end method
