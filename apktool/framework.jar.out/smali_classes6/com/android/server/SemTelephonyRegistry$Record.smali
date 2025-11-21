.class Lcom/android/server/SemTelephonyRegistry$Record;
.super Ljava/lang/Object;
.source "SemTelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SemTelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field blacklist binder:Landroid/os/IBinder;

.field blacklist callerPid:I

.field blacklist callerUid:I

.field blacklist callingFeatureId:Ljava/lang/String;

.field blacklist callingPackage:Ljava/lang/String;

.field blacklist context:Landroid/content/Context;

.field blacklist deathRecipient:Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;

.field blacklist phoneId:I

.field blacklist subId:I

.field blacklist tiantongSatelliteChangeListener:Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SemTelephonyRegistry$Record;->subId:I

    iput v0, p0, Lcom/android/server/SemTelephonyRegistry$Record;->phoneId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/SemTelephonyRegistry-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SemTelephonyRegistry$Record;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist matchTiantongSatelliteChangeListener()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/SemTelephonyRegistry$Record;->tiantongSatelliteChangeListener:Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{callingPackage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/SemTelephonyRegistry;->-$$Nest$smpii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/SemTelephonyRegistry$Record;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/SemTelephonyRegistry$Record;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/SemTelephonyRegistry$Record;->phoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
