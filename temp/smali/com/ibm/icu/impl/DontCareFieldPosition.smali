.class public final Lcom/ibm/icu/impl/DontCareFieldPosition;
.super Ljava/text/FieldPosition;
.source "DontCareFieldPosition.java"


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/ibm/icu/impl/DontCareFieldPosition;

    invoke-direct {v0}, Lcom/ibm/icu/impl/DontCareFieldPosition;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/DontCareFieldPosition;->INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const v0, -0x366bb660    # -1214772.0f

    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public setBeginIndex(I)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
