.class public interface abstract Lcom/netflix/mediaclient/servicemgr/ExceptionLoggingCl;
.super Ljava/lang/Object;
.source "ExceptionLoggingCl.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final LOG_EXCEPTION_CL:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_EXCEPTION_CL"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_EXCEPTION_CL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ExceptionLoggingCl;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract reportExceptionToCL(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
.end method

.method public abstract setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
.end method
