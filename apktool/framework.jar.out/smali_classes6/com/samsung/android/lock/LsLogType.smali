.class public final enum Lcom/samsung/android/lock/LsLogType;
.super Ljava/lang/Enum;
.source "LsLogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/lock/LsLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist ENROLL:Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist EVENTS:Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist KEYERR:Lcom/samsung/android/lock/LsLogType;

.field public static final blacklist LIST:[Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist RESTORE:Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist SUMMARY:Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist VERIFY:Lcom/samsung/android/lock/LsLogType;


# instance fields
.field private final blacklist mErrorCode:Ljava/lang/String;

.field private final blacklist mMaxSize:J

.field private final blacklist mProperty:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/lock/LsLogType;
    .locals 7

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->SUMMARY:Lcom/samsung/android/lock/LsLogType;

    sget-object v1, Lcom/samsung/android/lock/LsLogType;->ENROLL:Lcom/samsung/android/lock/LsLogType;

    sget-object v2, Lcom/samsung/android/lock/LsLogType;->VERIFY:Lcom/samsung/android/lock/LsLogType;

    sget-object v3, Lcom/samsung/android/lock/LsLogType;->KEYERR:Lcom/samsung/android/lock/LsLogType;

    sget-object v4, Lcom/samsung/android/lock/LsLogType;->RESTORE:Lcom/samsung/android/lock/LsLogType;

    sget-object v5, Lcom/samsung/android/lock/LsLogType;->EVENTS:Lcom/samsung/android/lock/LsLogType;

    sget-object v6, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/lock/LsLogType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 12

    new-instance v0, Lcom/samsung/android/lock/LsLogType;

    const/16 v4, 0x203

    const/4 v5, 0x0

    const-string v1, "SUMMARY"

    const/4 v2, 0x0

    const-string v3, "Summary"

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lock/LsLogType;->SUMMARY:Lcom/samsung/android/lock/LsLogType;

    new-instance v1, Lcom/samsung/android/lock/LsLogType;

    const/16 v5, 0x103

    const/4 v6, 0x0

    const-string v2, "ENROLL"

    const/4 v3, 0x1

    const-string v4, "Enroll"

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/lock/LsLogType;->ENROLL:Lcom/samsung/android/lock/LsLogType;

    new-instance v2, Lcom/samsung/android/lock/LsLogType;

    const/16 v6, 0x103

    const/16 v7, 0x1e

    const-string v3, "VERIFY"

    const/4 v4, 0x2

    const-string v5, "Verify"

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/lock/LsLogType;->VERIFY:Lcom/samsung/android/lock/LsLogType;

    new-instance v3, Lcom/samsung/android/lock/LsLogType;

    const/16 v7, 0x103

    const/16 v8, 0x1e

    const-string v4, "KEYERR"

    const/4 v5, 0x3

    const-string v6, "KeystoreErr"

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/lock/LsLogType;->KEYERR:Lcom/samsung/android/lock/LsLogType;

    new-instance v4, Lcom/samsung/android/lock/LsLogType;

    const/16 v8, 0x103

    const/16 v9, 0x1e

    const-string v5, "RESTORE"

    const/4 v6, 0x4

    const-string v7, "Restore"

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/lock/LsLogType;->RESTORE:Lcom/samsung/android/lock/LsLogType;

    new-instance v5, Lcom/samsung/android/lock/LsLogType;

    const/16 v9, 0x101

    const/16 v10, 0xa

    const-string v6, "EVENTS"

    const/4 v7, 0x5

    const-string v8, "Events"

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/lock/LsLogType;->EVENTS:Lcom/samsung/android/lock/LsLogType;

    new-instance v6, Lcom/samsung/android/lock/LsLogType;

    const/16 v10, 0x103

    const/4 v11, 0x0

    const-string v7, "UNKNOWN"

    const/4 v8, 0x6

    const-string v9, "Unknown"

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    invoke-static {}, Lcom/samsung/android/lock/LsLogType;->$values()[Lcom/samsung/android/lock/LsLogType;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/lock/LsLogType;->$VALUES:[Lcom/samsung/android/lock/LsLogType;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/lock/LsLogType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
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
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/lock/LsLogType;->mErrorCode:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/lock/LsLogType;->mProperty:I

    mul-int/lit16 p5, p5, 0x400

    int-to-long p1, p5

    iput-wide p1, p0, Lcom/samsung/android/lock/LsLogType;->mMaxSize:J

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/lock/LsLogType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lock/LsLogType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/android/lock/LsLogType;
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->$VALUES:[Lcom/samsung/android/lock/LsLogType;

    invoke-virtual {v0}, [Lcom/samsung/android/lock/LsLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/lock/LsLogType;

    return-object v0
.end method


# virtual methods
.method blacklist containsProperty(I)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/lock/LsLogType;->mProperty:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist getErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/lock/LsLogType;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getMaxSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/lock/LsLogType;->mMaxSize:J

    return-wide v0
.end method
