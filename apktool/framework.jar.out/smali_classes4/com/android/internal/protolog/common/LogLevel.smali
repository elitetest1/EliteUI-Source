.class public final enum Lcom/android/internal/protolog/common/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/protolog/common/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist DEBUG:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist ERROR:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist INFO:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist WARN:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist WTF:Lcom/android/internal/protolog/common/LogLevel;


# instance fields
.field public final blacklist id:I

.field public final blacklist shortCode:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/protolog/common/LogLevel;
    .locals 6

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v3, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v4, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v5, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const-string v3, "d"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "VERBOSE"

    const-string/jumbo v2, "v"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "INFO"

    const-string v2, "i"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "WARN"

    const-string/jumbo v2, "w"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "ERROR"

    const-string v2, "e"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string/jumbo v1, "wtf"

    const/4 v2, 0x6

    const-string v3, "WTF"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->$values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->$VALUES:[Lcom/android/internal/protolog/common/LogLevel;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/internal/protolog/common/LogLevel;->shortCode:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/protolog/common/LogLevel;->id:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/protolog/common/LogLevel;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/protolog/common/LogLevel;
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->$VALUES:[Lcom/android/internal/protolog/common/LogLevel;

    invoke-virtual {v0}, [Lcom/android/internal/protolog/common/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/protolog/common/LogLevel;

    return-object v0
.end method
