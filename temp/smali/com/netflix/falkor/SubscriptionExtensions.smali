.class public Lcom/netflix/falkor/SubscriptionExtensions;
.super Ljava/lang/Object;
.source "SubscriptionExtensions.java"


# static fields
.field public static final EMPTY:Lcom/netflix/falkor/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/netflix/falkor/SubscriptionExtensions$1;

    invoke-direct {v0}, Lcom/netflix/falkor/SubscriptionExtensions$1;-><init>()V

    sput-object v0, Lcom/netflix/falkor/SubscriptionExtensions;->EMPTY:Lcom/netflix/falkor/Subscription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
