.class public final Lcom/android/phone/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallBarringEditPreference:[I

.field public static final CallForwardEditPreference:[I

.field public static final ConfirmPlaceCallPreference:[I

.field public static final EditPhoneNumberPreference:[I

.field public static final SomcContactTextView:[I

.field public static final SomcSlidingDrawer:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 5440
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010004

    aput v2, v0, v1

    sput-object v0, Lcom/android/phone/R$styleable;->CallBarringEditPreference:[I

    .line 5476
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    .line 5529
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/R$styleable;->ConfirmPlaceCallPreference:[I

    .line 5596
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    .line 5680
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/phone/R$styleable;->SomcContactTextView:[I

    .line 5761
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/phone/R$styleable;->SomcSlidingDrawer:[I

    return-void

    .line 5476
    :array_0
    .array-data 4
        0x7f010005
        0x7f010006
    .end array-data

    .line 5529
    :array_1
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
    .end array-data

    .line 5596
    :array_2
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data

    .line 5680
    :array_3
    .array-data 4
        0x7f01000a
        0x7f01000b
        0x7f01000c
    .end array-data

    .line 5761
    :array_4
    .array-data 4
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
