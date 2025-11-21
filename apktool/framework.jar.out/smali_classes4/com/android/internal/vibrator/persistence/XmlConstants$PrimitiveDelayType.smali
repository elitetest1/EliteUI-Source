.class public final enum Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
.super Ljava/lang/Enum;
.source "XmlConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/XmlConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrimitiveDelayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

.field public static final enum blacklist PAUSE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

.field public static final enum blacklist RELATIVE_START_OFFSET:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;


# instance fields
.field private final blacklist mDelayType:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .locals 2

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->PAUSE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->RELATIVE_START_OFFSET:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    filled-new-array {v0, v1}, [Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->PAUSE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    const-string v1, "RELATIVE_START_OFFSET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->RELATIVE_START_OFFSET:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    invoke-static {}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->$values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->$VALUES:[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->mDelayType:I

    return-void
.end method

.method public static blacklist findByName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .locals 1

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->valueOf(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist findByType(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .locals 5

    invoke-static {}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->mDelayType:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .locals 1

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->$VALUES:[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    invoke-virtual {v0}, [Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    return-object v0
.end method


# virtual methods
.method public blacklist getDelayType()I
    .locals 0

    iget p0, p0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->mDelayType:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
