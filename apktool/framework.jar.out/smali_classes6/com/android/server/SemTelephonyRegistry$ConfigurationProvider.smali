.class public Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;
.super Ljava/lang/Object;
.source "SemTelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SemTelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationProvider"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getRegistrationLimit$0()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "phone_state_listener_per_pid_registration_limit"

    const/16 v1, 0x32

    const-string/jumbo v2, "telephony"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isRegistrationLimitEnabledInPlatformCompat$1(I)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/32 v0, 0x8fe4129

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getRegistrationLimit()I
    .locals 0

    new-instance p0, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist isRegistrationLimitEnabledInPlatformCompat(I)Z
    .locals 0

    new-instance p0, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
