.class public Lvpadn/ay;
.super Lvpadn/ax;
.source "VponNativeAdData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Lvpadn/ax;-><init>()V

    .line 4
    iput-object v0, p0, Lvpadn/ay;->a:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lvpadn/ay;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lvpadn/ay;->a:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lvpadn/ay;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lvpadn/ay;->b:Ljava/lang/String;

    return-object v0
.end method
