.class public Lcom/ibm/icu/util/TimeUnit;
.super Lcom/ibm/icu/util/MeasureUnit;
.source "TimeUnit.java"


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/TimeUnit;->index:I

    .line 33
    return-void
.end method
