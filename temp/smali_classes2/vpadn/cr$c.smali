.class public Lvpadn/cr$c;
.super Ljava/lang/Object;
.source "VideoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cr$c;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lvpadn/cr$c;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lvpadn/cr$c;->a:I

    .line 122
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lvpadn/cr$c;->c:Z

    .line 134
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lvpadn/cr$c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cr$c;->b:Ljava/util/List;

    .line 127
    :cond_0
    iget-object v0, p0, Lvpadn/cr$c;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lvpadn/cr$c;->c:Z

    return v0
.end method
