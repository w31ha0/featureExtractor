.class public Lcom/netflix/falkor/Undefined;
.super Lcom/netflix/falkor/Sentinel;
.source "Undefined.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/Sentinel",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/netflix/falkor/Undefined;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/netflix/falkor/Undefined;

    invoke-direct {v0}, Lcom/netflix/falkor/Undefined;-><init>()V

    sput-object v0, Lcom/netflix/falkor/Undefined;->instance:Lcom/netflix/falkor/Undefined;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/falkor/Sentinel;-><init>(Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/netflix/falkor/Undefined;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/netflix/falkor/Undefined;->instance:Lcom/netflix/falkor/Undefined;

    return-object v0
.end method
