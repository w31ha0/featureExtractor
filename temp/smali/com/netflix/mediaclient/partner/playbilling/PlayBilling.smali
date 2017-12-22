.class public Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;
.super Ljava/lang/Object;
.source "PlayBilling.java"


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE:I = 0x2

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field private static final BUNDLE_EXTRA_ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field private static final BUNDLE_EXTRA_TRIAL_PERIOD:Ljava/lang/String; = "trialPeriod"

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field private static final NFLX_CODE_PLAY_PURCHASE_RESPONSE_NULL:I = 0x66

.field private static final NFLX_CODE_PLAY_RESPONSE_NULL:I = 0x65

.field private static final NFLX_CODE_REQUEST_NULL:I = 0x64

.field private static final NFLX_KEY_EXCEPTION_IN:Ljava/lang/String; = "exceptionIn"

.field private static final NFLX_KEY_EXCEPTION_MSG:Ljava/lang/String; = "exceptionString"

.field private static final NFLX_KEY_RAW_RESPONSE:Ljava/lang/String; = "rawData"

.field public static final PLAY_BILLING_ENABLED_IN_CODE:Z = true

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final RESPONSE_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final RESPONSE_INAPP_DEVELOPER_PAYLOAD:Ljava/lang/String; = "developerPayload"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field private static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field private static final RESPONSE_INAPP_PURCHASE_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field private static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field private static final RESPONSE_LIST_PARAMS:Ljava/util/List;

.field private static final RESPONSE_LIST_STRING_PARAMS:Ljava/util/List;

.field private static final TAG:Ljava/lang/String; = "playBilling"


# instance fields
.field private LENGTH_OF_EXCEPTION_LOG:I

.field volatile mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field volatile mDisposeAfterAsync:Z

.field mDisposed:Z

.field mHandler:Landroid/os/Handler;

.field mPurchaseListener:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSubscriptionUpdateSupported:Z

.field mSubscriptionsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->RESPONSE_LIST_PARAMS:Ljava/util/List;

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->RESPONSE_LIST_STRING_PARAMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSetupDone:Z

    .line 58
    iput-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mDisposed:Z

    .line 61
    iput-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mDisposeAfterAsync:Z

    .line 64
    iput-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionsSupported:Z

    .line 67
    iput-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionUpdateSupported:Z

    .line 71
    iput-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncInProgress:Z

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncOperation:Ljava/lang/String;

    .line 712
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->LENGTH_OF_EXCEPTION_LOG:I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mHandler:Landroid/os/Handler;

    .line 161
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "IAB helper created."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->initiatePurchasePlayBilling(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->sendToCallback(Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getPurchaseHistoryFromPlayBilling(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getPurchasesFromPlayBilling(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getSkuDetailsFromPlayBilling(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private canBindWithService(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 290
    :cond_0
    return v0
.end method

.method private canProceedWithRequest()Z
    .locals 3

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->checkNotDisposed()V

    .line 596
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionsSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncInProgress:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 597
    :goto_0
    if-nez v0, :cond_0

    .line 598
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "getSkuDetails mSubscriptionsSupported is false or mAsyncInProgress is true"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    return v0

    .line 596
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PlayBilling was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    return-void
.end method

.method private getBase64EncodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 789
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 790
    invoke-static {v1}, Lcom/netflix/mediaclient/util/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 794
    :goto_0
    return-object v0

    .line 791
    :catch_0
    move-exception v1

    .line 792
    const-string/jumbo v2, "playBilling"

    const-string/jumbo v3, "error encoding to base64"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getJsonObjFromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 723
    if-nez p1, :cond_0

    .line 724
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "bundle is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getBundleForError(I)Landroid/os/Bundle;

    move-result-object p1

    .line 728
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 729
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 730
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 732
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 734
    sget-object v2, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->RESPONSE_LIST_PARAMS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 736
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 738
    sget-object v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->RESPONSE_LIST_STRING_PARAMS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 754
    :cond_2
    :goto_1
    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 755
    if-eqz v2, :cond_4

    .line 756
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    goto :goto_0

    .line 742
    :cond_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 743
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 744
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 745
    const-string/jumbo v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 746
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->sanitizePurchaseData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 748
    :goto_3
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 761
    :cond_4
    if-eqz v1, :cond_1

    .line 762
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 773
    :cond_5
    :try_start_1
    const-string/jumbo v0, "rawData"

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getBase64EncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 778
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 783
    return-object v4

    .line 774
    :catch_1
    move-exception v0

    .line 775
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "error adding raw message"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_6
    move-object v1, v3

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method

.method private getMessageFromException(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 714
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->LENGTH_OF_EXCEPTION_LOG:I

    if-le v1, v2, :cond_0

    .line 716
    const/4 v1, 0x0

    iget v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->LENGTH_OF_EXCEPTION_LOG:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 718
    :cond_0
    return-object v0

    .line 714
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getPurchaseHistoryFromPlayBilling(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "subs"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getPurchaseHistory(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 669
    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getJsonObjFromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "getPurchaseHistoryFromPlayBilling failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 666
    const-string/jumbo v1, "getPurchaseHistoryFromPlayBilling"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getMessageFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getBundleForException(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getPurchasesFromPlayBilling(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "subs"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 654
    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getJsonObjFromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "getPurchasesFromPlayBilling failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 651
    const-string/jumbo v1, "getPurchasesFromPlayBilling"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getMessageFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getBundleForException(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 440
    const-string/jumbo v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string/jumbo v1, "/"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 444
    const-string/jumbo v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string/jumbo v2, "/"

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 456
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 457
    rsub-int v0, p0, -0x3e8

    .line 458
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    .line 464
    :goto_0
    return-object v0

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 462
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 464
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private getSkuDetailsFromPlayBilling(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 677
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 681
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getBundleForError(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getJsonObjFromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    .line 696
    :goto_0
    return-object v0

    .line 684
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 685
    const-string/jumbo v1, "ITEM_ID_LIST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 686
    const-string/jumbo v1, "playBilling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSkuDetailsFromPlayBilling bundle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "subs"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 696
    :goto_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getJsonObjFromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "getSkuDetailsFromPlayBilling failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 693
    const-string/jumbo v1, "getSkuDetailsFromPlayBilling"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getMessageFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getBundleForException(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method private initiatePurchasePlayBilling(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/json/JSONObject;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 612
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 613
    const-string/jumbo v0, "trialPeriod"

    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const-string/jumbo v0, "accountId"

    invoke-virtual {v6, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "extras :%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "subs"

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 620
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v1

    .line 621
    if-eqz v1, :cond_1

    .line 622
    const-string/jumbo v2, "playBilling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to buy item, Error response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getJsonObjFromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0

    .line 626
    :cond_1
    const-string/jumbo v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 627
    const-string/jumbo v1, "playBilling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launching buy intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Request code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iput p6, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mRequestCode:I

    .line 629
    const-string/jumbo v1, "subs"

    iput-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mPurchasingItemType:Ljava/lang/String;

    .line 630
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 632
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p6

    .line 630
    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    const/4 v0, 0x0

    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "getPurchasesFromPlayBilling failed"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 636
    const-string/jumbo v1, "initiatePurchasePlayBilling"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getMessageFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getBundleForException(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 637
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getJsonObjFromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private sanitizePurchaseData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 409
    const-string/jumbo v0, "developerPayload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-object p1

    .line 418
    :cond_1
    :try_start_0
    const-string/jumbo v0, "developerPayload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "undefined"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    const-string/jumbo v1, "developerPayload"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "error sanitizing payment data"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendToCallback(Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mDisposed:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$8;-><init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    :cond_0
    return-void
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 471
    const-string/jumbo v0, "playBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal state for operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): IAB helper is not set up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    .line 316
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Will dispose after async operation finishes."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput-boolean v3, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mDisposeAfterAsync:Z

    .line 340
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Disposing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSetupDone:Z

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 324
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Unbinding from service."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mDisposed:Z

    .line 336
    iput-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    .line 337
    iput-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mServiceConn:Landroid/content/ServiceConnection;

    .line 338
    iput-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 339
    iput-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mPurchaseListener:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method flagEndAsync()V
    .locals 3

    .prologue
    .line 503
    const-string/jumbo v0, "playBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ending async operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncOperation:Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncInProgress:Z

    .line 507
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mDisposeAfterAsync:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->dispose()V

    .line 510
    :cond_0
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    .line 497
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncOperation:Ljava/lang/String;

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mAsyncInProgress:Z

    .line 499
    const-string/jumbo v0, "playBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting async operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void
.end method

.method getBundleForError(I)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 707
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 708
    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 709
    return-object v0
.end method

.method getBundleForException(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getBundleForError(I)Landroid/os/Bundle;

    move-result-object v0

    .line 701
    const-string/jumbo v1, "exceptionIn"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string/jumbo v1, "exceptionString"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-object v0
.end method

.method public getPurchaseHistory(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 2

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->canProceedWithRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->onResult(Lorg/json/JSONObject;)V

    .line 549
    :goto_0
    return-void

    .line 541
    :cond_0
    const-string/jumbo v0, "locking for getPurchaseHistory"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->flagStartAsync(Ljava/lang/String;)V

    .line 542
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;-><init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getPurchases(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 2

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->canProceedWithRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->onResult(Lorg/json/JSONObject;)V

    .line 565
    :goto_0
    return-void

    .line 557
    :cond_0
    const-string/jumbo v0, "locking for getPurchases"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->flagStartAsync(Ljava/lang/String;)V

    .line 558
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$6;-><init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4

    .prologue
    .line 478
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 479
    if-nez v0, :cond_0

    .line 480
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    .line 483
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 484
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 486
    :cond_2
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "Unexpected type for bundle response code."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string/jumbo v1, "playBilling"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSkuDetails(Ljava/util/ArrayList;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->canProceedWithRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->onResult(Lorg/json/JSONObject;)V

    .line 582
    :goto_0
    return-void

    .line 574
    :cond_0
    const-string/jumbo v0, "locking for getSkuDetails"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->flagStartAsync(Ljava/lang/String;)V

    .line 575
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;-><init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/util/ArrayList;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 357
    iget v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mRequestCode:I

    if-eq p1, v1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->checkNotDisposed()V

    .line 362
    const-string/jumbo v1, "handleActivityResult"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->checkSetupDone(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mPurchaseListener:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    if-nez v1, :cond_1

    .line 366
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "purchase listerner null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mPurchaseListener:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    .line 373
    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->flagEndAsync()V

    .line 376
    if-nez p3, :cond_2

    .line 377
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Null data in IAB activity result."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getBundleForError(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getJsonObjFromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->onResult(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 382
    :cond_2
    const-string/jumbo v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    const-string/jumbo v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 384
    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 391
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 393
    :try_start_0
    const-string/jumbo v6, "RESPONSE_CODE"

    const/4 v7, -0x1

    if-ne p2, v7, :cond_4

    :goto_1
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->sanitizePurchaseData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 397
    const-string/jumbo v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    :cond_3
    const-string/jumbo v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_2
    invoke-virtual {v2, v5}, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->onResult(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 393
    goto :goto_1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v3, "error processing payment data"

    invoke-static {v1, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public isPlayBillingReady()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSetupDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionsSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionUpdateSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purchase(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 11

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->canProceedWithRequest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->onResult(Lorg/json/JSONObject;)V

    .line 533
    :goto_0
    return-void

    .line 518
    :cond_0
    const-string/jumbo v1, "locking for purchase"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->flagStartAsync(Ljava/lang/String;)V

    .line 519
    new-instance v10, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v10}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;-><init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v10, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startSetup(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;)V
    .locals 4

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->checkNotDisposed()V

    .line 187
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSetupDone:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Starting play billing setup."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;-><init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mServiceConn:Landroid/content/ServiceConnection;

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->canBindWithService(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    if-eqz p1, :cond_1

    .line 284
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;->onSetupFinished(Z)V

    goto :goto_0
.end method
