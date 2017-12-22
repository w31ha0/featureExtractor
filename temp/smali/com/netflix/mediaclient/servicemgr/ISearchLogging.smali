.class public interface abstract Lcom/netflix/mediaclient/servicemgr/ISearchLogging;
.super Ljava/lang/Object;
.source "ISearchLogging.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final EXTRA_CHILD_IDS:Ljava/lang/String; = "childIds"

.field public static final EXTRA_FROM:Ljava/lang/String; = "from"

.field public static final EXTRA_INPUT_MODE:Ljava/lang/String; = "input_mode"

.field public static final EXTRA_MODAL_VIEW:Ljava/lang/String; = "modal_view"

.field public static final EXTRA_PARENT_ID:Ljava/lang/String; = "parentId"

.field public static final EXTRA_PLAYABLE_ID:Ljava/lang/String; = "playableId"

.field public static final EXTRA_QUERY:Ljava/lang/String; = "query"

.field public static final EXTRA_REFERENCE_ID:Ljava/lang/String; = "reference"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final EXTRA_TO:Ljava/lang/String; = "to"

.field public static final EXTRA_VIEW:Ljava/lang/String; = "view"

.field public static final PRIVACY_VIOLATION_PLACEHOLDER:Ljava/lang/String; = "PRIVACY_VIOLATION"

.field public static final SEARCH_EDIT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_EDIT"

.field public static final SEARCH_FOCUS_SESSION_END:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_SESSION_END"

.field public static final SEARCH_FOCUS_SESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_SESSION_START"

.field public static final SEARCH_IMPRESSION:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_IMPRESSION"

.field public static final SEARCH_SESSION_END:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_SESSION_END"

.field public static final SEARCH_SESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_SESSION_START"

.field public static final SEARCH_THROTTLE_SESSION_END:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_THROTTLE_SESSION_END"

.field public static final SEARCH_THROTTLE_SESSION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_THROTTLE_SESSION_START"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_SESSION_START"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_SESSION_END"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_SESSION_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_SESSION_END"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_EDIT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_IMPRESSION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_THROTTLE_SESSION_START"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_THROTTLE_SESSION_END"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract endAllActiveSessions()V
.end method

.method public abstract fireEditEvent(Landroid/content/Intent;)V
.end method

.method public abstract fireImpressionEvent(Landroid/content/Intent;)V
.end method

.method public abstract startFocusSession(Landroid/content/Intent;)V
.end method

.method public abstract startSession(Landroid/content/Intent;)V
.end method

.method public abstract stopFocusSession(Landroid/content/Intent;)V
.end method

.method public abstract stopSession(Landroid/content/Intent;)V
.end method
