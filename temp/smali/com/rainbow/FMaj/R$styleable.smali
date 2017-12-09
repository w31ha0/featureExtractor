.class public final Lcom/rainbow/FMaj/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rainbow/FMaj/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_wooboo_adlib_android_WoobooAdView:[I

.field public static final com_wooboo_adlib_android_WoobooAdView_backgroundColor:I = 0x0

.field public static final com_wooboo_adlib_android_WoobooAdView_refreshInterval:I = 0x3

.field public static final com_wooboo_adlib_android_WoobooAdView_testing:I = 0x2

.field public static final com_wooboo_adlib_android_WoobooAdView_textColor:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rainbow/FMaj/R$styleable;->com_wooboo_adlib_android_WoobooAdView:[I

    .line 99
    return-void

    .line 116
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
