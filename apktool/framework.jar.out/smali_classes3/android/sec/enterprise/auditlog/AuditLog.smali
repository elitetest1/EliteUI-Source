.class public Landroid/sec/enterprise/auditlog/AuditLog;
.super Ljava/lang/Object;
.source "AuditLog.java"


# static fields
.field public static final whitelist ALERT:I = 0x1

.field public static final whitelist AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final whitelist AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final whitelist AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final whitelist AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final whitelist AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final whitelist CRITICAL:I = 0x2

.field public static final whitelist ERROR:I = 0x3

.field public static final whitelist NOTICE:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "AuditLog"

.field public static final whitelist WARNING:I = 0x4


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAuditLogEnabledAsUser(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/sec/enterprise/IEDMProxy;->isAuditLogEnabledAsUser(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist log(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, p0

    move v3, p1

    move v4, p2

    move v1, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy;->logEventForLegacyComponents(IIIZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static varargs blacklist logEvent(I[Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    new-instance v5, Landroid/sec/enterprise/auditlog/AuditLogParams;

    invoke-direct {v5, p1}, Landroid/sec/enterprise/auditlog/AuditLogParams;-><init>([Ljava/lang/Object;)V

    const/4 v1, -0x1

    const/4 v3, 0x0

    move v4, p0

    invoke-interface/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy;->logEventAsUser(IILjava/lang/String;ILandroid/sec/enterprise/auditlog/AuditLogParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static varargs blacklist logEventAsUser(II[Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    new-instance v5, Landroid/sec/enterprise/auditlog/AuditLogParams;

    invoke-direct {v5, p2}, Landroid/sec/enterprise/auditlog/AuditLogParams;-><init>([Ljava/lang/Object;)V

    const/4 v3, 0x0

    move v1, p0

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy;->logEventAsUser(IILjava/lang/String;ILandroid/sec/enterprise/auditlog/AuditLogParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
