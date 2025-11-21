.class Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/enterprise/certificate/CertificatePolicyCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/sec/enterprise/certificate/CertificatePolicyCache;


# direct methods
.method constructor blacklist <init>(Landroid/sec/enterprise/certificate/CertificatePolicyCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;->this$0:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.knox.intent.action.CERTIFICATE_POLICY_CHANGED_INTERNAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Intent received to refresh cache"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.samsung.android.knox.intent.extra.CERTIFICATE_POLICY_TYPE_CHANGED_INTERNAL"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;->this$0:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    invoke-static {p0, p1}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->-$$Nest$mreadVariables(Landroid/sec/enterprise/certificate/CertificatePolicyCache;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;->this$0:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->-$$Nest$mreadVariables(Landroid/sec/enterprise/certificate/CertificatePolicyCache;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
