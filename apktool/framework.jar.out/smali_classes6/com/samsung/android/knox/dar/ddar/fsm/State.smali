.class public final enum Lcom/samsung/android/knox/dar/ddar/fsm/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/dar/ddar/fsm/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum blacklist DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum blacklist DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum blacklist DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum blacklist DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum blacklist IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/knox/dar/ddar/fsm/State;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    sget-object v3, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    sget-object v4, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "DEVICE_UNLOCK_DATA_UNLOCK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "DEVICE_LOCK_DATA_UNLOCK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "DEVICE_LOCK_DATA_LOCK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "DEVICE_UNLOCK_DATA_LOCK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->$values()[Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->$VALUES:[Lcom/samsung/android/knox/dar/ddar/fsm/State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/fsm/State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/android/knox/dar/ddar/fsm/State;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->$VALUES:[Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/dar/ddar/fsm/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/dar/ddar/fsm/State;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "-"

    return-object p0

    :cond_0
    const-string p0, "DEVICE_UNLOCK_DATA_LOCK"

    return-object p0

    :cond_1
    const-string p0, "DEVICE_LOCK_DATA_LOCK"

    return-object p0

    :cond_2
    const-string p0, "DEVICE_LOCK_DATA_UNLOCK"

    return-object p0

    :cond_3
    const-string p0, "DEVICE_UNLOCK_DATA_UNLOCK"

    return-object p0

    :cond_4
    const-string p0, "IDLE"

    return-object p0
.end method
