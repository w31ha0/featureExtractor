.class final Lcom/ibm/icu/util/MeasureUnit$1;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Lcom/ibm/icu/util/MeasureUnit$Factory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
