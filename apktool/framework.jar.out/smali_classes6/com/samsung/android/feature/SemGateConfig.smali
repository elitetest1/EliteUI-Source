.class public final Lcom/samsung/android/feature/SemGateConfig;
.super Ljava/lang/Object;
.source "SemGateConfig.java"


# static fields
.field public static final blacklist ACTION_SCREEN_TEXT:Ljava/lang/String; = "com.sec.android.gate.LCDTEXT"

.field private static final blacklist DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final blacklist DEBUG_LEVEL_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final blacklist DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field public static final blacklist EXTRA_SCREEN_TEXT:Ljava/lang/String; = "ENABLED"

.field public static final blacklist GATE_INTENT_ACTION:Ljava/lang/String; = "com.sec.android.gate.GATE"

.field public static final blacklist GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final blacklist GATE_SYS_PROP_GATE_ENABLED:Ljava/lang/String; = "service.gate.enabled"

.field public static final blacklist GATE_SYS_PROP_LCDTEXT_ENABLED:Ljava/lang/String; = "service.gate.lcdtexton"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "GATE"

.field private static blacklist sGateEnabled:Z = false

.field private static blacklist sGateLcdtextEnabled:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isGateEnabled()Z
    .locals 5

    const-string/jumbo v0, "ro.debug_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "1"

    const-string/jumbo v4, "service.gate.enabled"

    if-eqz v1, :cond_1

    const-string v1, "0x4f4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/feature/SemGateConfig;->sGateEnabled:Z

    if-nez v0, :cond_3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isGateLcdtextEnabled()Z
    .locals 5

    const-string/jumbo v0, "ro.debug_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "1"

    const-string/jumbo v4, "service.gate.lcdtexton"

    if-eqz v1, :cond_1

    const-string v1, "0x4f4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/feature/SemGateConfig;->sGateLcdtextEnabled:Z

    if-nez v0, :cond_3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist setGateEnabled(Z)V
    .locals 1

    sput-boolean p0, Lcom/samsung/android/feature/SemGateConfig;->sGateEnabled:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SemGateConfig.setGateEnabled. GATE = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/feature/SemGateConfig;->sGateEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", LCDTEXT = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/feature/SemGateConfig;->sGateLcdtextEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GATE"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist setGateLcdtextEnabled(Z)V
    .locals 1

    sput-boolean p0, Lcom/samsung/android/feature/SemGateConfig;->sGateLcdtextEnabled:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SemGateConfig.setGateLcdtextEnabled. GATE = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/feature/SemGateConfig;->sGateEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", LCDTEXT = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/feature/SemGateConfig;->sGateLcdtextEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GATE"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
