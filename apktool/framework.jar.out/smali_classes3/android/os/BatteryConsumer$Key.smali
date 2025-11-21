.class public final Landroid/os/BatteryConsumer$Key;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field final blacklist mDurationColumnIndex:I

.field final blacklist mPowerColumnIndex:I

.field public final blacklist powerComponentId:I

.field public final blacklist powerState:I

.field public final blacklist processState:I

.field public final blacklist screenState:I


# direct methods
.method private constructor blacklist <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iput p2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iput p3, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    iput p4, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    iput p5, p0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iput p6, p0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIILandroid/os/BatteryConsumer-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIII)V

    return-void
.end method

.method public static blacklist toString(IIII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x14

    if-ge p0, v1, :cond_0

    invoke-static {p0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "CUSTOM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p1, :cond_1

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, ":scr-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsScreenStateNames()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, ":pwr-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsPowerStateNames()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Landroid/os/BatteryConsumer$Key;

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    iget p1, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    add-int/2addr v0, p0

    return v0
.end method

.method blacklist matches(IIII)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    if-eq v2, p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eq p2, v1, :cond_2

    if-eq p1, p2, :cond_2

    return v0

    :cond_2
    if-eqz p3, :cond_3

    iget p1, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-eq p1, p3, :cond_3

    return v0

    :cond_3
    if-eqz p4, :cond_4

    iget p0, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-eq p0, p4, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget p0, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-static {v0, v1, v2, p0}, Landroid/os/BatteryConsumer$Key;->toString(IIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
