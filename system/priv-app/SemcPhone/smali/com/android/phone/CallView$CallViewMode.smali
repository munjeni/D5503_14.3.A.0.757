.class public final enum Lcom/android/phone/CallView$CallViewMode;
.super Ljava/lang/Enum;
.source "CallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CallViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CallView$CallViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CallView$CallViewMode;

.field public static final enum MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

.field public static final enum NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/android/phone/CallView$CallViewMode;

    const-string v1, "NORMAL_MODE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallView$CallViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    .line 53
    new-instance v0, Lcom/android/phone/CallView$CallViewMode;

    const-string v1, "MANAGE_CONFERENCE_MODE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CallView$CallViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/CallView$CallViewMode;

    sget-object v1, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/CallView$CallViewMode;->$VALUES:[Lcom/android/phone/CallView$CallViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CallView$CallViewMode;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/phone/CallView$CallViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallView$CallViewMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CallView$CallViewMode;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->$VALUES:[Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CallView$CallViewMode;

    return-object v0
.end method
