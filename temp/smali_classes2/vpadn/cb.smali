.class public Lvpadn/cb;
.super Ljava/lang/Object;
.source "CloseCommand.java"

# interfaces
.implements Lvpadn/by;


# instance fields
.field private a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lvpadn/cb;->a:Lvpadn/cs;

    .line 13
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lvpadn/cb;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->b()V

    .line 18
    return-void
.end method
