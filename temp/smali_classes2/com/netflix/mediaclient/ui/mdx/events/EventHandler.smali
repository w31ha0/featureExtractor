.class public abstract Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandler;


# static fields
.field protected static final TAG:Ljava/lang/String; = "mdxui"


# instance fields
.field protected final mAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;->mAction:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;->mAction:Ljava/lang/String;

    return-object v0
.end method
