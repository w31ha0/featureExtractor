.class public Lvpadn/cg;
.super Ljava/lang/Object;
.source "NarrowScreenCommand.java"

# interfaces
.implements Lvpadn/by;


# instance fields
.field private a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lvpadn/cg;->a:Lvpadn/cs;

    .line 9
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lvpadn/cg;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->p()V

    .line 14
    return-void
.end method