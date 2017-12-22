.class public interface abstract Lcom/netflix/mediaclient/servicemgr/DialLogging;
.super Ljava/lang/Object;
.source "DialLogging.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final CATEGORY:Ljava/lang/String; = "dial"

.field public static final EXTRA_DESC:Ljava/lang/String; = "desc"

.field public static final EXTRA_ESN:Ljava/lang/String; = "esn"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "headers"

.field public static final SERVER_DISCOVERED_EVENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_DIAL_SERVER_DISCOVERED"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_DIAL_SERVER_DISCOVERED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/DialLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract serverDiscovered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
