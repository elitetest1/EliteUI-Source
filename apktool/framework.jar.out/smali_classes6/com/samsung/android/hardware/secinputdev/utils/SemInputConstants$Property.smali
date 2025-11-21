.class public final enum Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
.super Ljava/lang/Enum;
.source "SemInputConstants.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist AOD_ACTIVE_AREA:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist AOD_ENABLE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist CMD_LIST:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist ENABLED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist EPEN_MEMO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist EPEN_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist EPEN_SAVING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist EPEN_WCHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist FEATURE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist FOD_INFO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist FOD_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist HAND_EDGE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist HW_PARAM:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist LP_DUMP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist PROX_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field public static final enum blacklist SCRUB_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;


# instance fields
.field private blacklist isExternalRead:Z

.field private blacklist isExternalWrite:Z

.field private blacklist nodeName:Ljava/lang/String;

.field private blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .locals 20

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FEATURE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD_LIST:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->SCRUB_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FOD_INFO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FOD_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->AOD_ACTIVE_AREA:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v8, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->AOD_ENABLE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v9, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v10, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->PROX_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v11, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->HW_PARAM:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v12, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->LP_DUMP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v13, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v14, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_SAVING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v15, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_MEMO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v16, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->HAND_EDGE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v17, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_WCHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v18, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ENABLED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    sget-object v19, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    filled-new-array/range {v1 .. v19}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 14

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v7, 0x0

    const-string v2, "FEATURE"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "support_feature"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FEATURE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v8, 0x0

    const-string v3, "CMD_LIST"

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-string v6, "cmd_list"

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD_LIST:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, "SCRUB_POS"

    const/4 v5, 0x3

    const/4 v6, 0x3

    const-string/jumbo v7, "scrub_pos"

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->SCRUB_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v5, "FOD_INFO"

    const/4 v6, 0x4

    const/4 v7, 0x4

    const-string v8, "fod_info"

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FOD_INFO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v6, "FOD_POS"

    const/4 v7, 0x5

    const/4 v8, 0x5

    const-string v9, "fod_pos"

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FOD_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v7, "AOD_ACTIVE_AREA"

    const/4 v8, 0x6

    const/4 v9, 0x6

    const-string v10, "aod_active_area"

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->AOD_ACTIVE_AREA:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v13, 0x0

    const-string v8, "AOD_ENABLE"

    const/4 v9, 0x7

    const/4 v10, 0x7

    const-string v11, "aod_enable"

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->AOD_ENABLE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v1, "EPEN_POS"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "get_epen_pos"

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v7, 0x1

    const-string v2, "PROX_OFF"

    const/16 v3, 0x9

    const/16 v4, 0x9

    const-string/jumbo v5, "prox_power_off"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->PROX_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "HW_PARAM"

    const/16 v4, 0xa

    const/16 v5, 0xa

    const-string v6, "hw_param"

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->HW_PARAM:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v9, 0x0

    const-string v4, "LP_DUMP"

    const/16 v5, 0xb

    const/16 v6, 0xb

    const-string v7, "get_lp_dump"

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->LP_DUMP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v10, 0x0

    const-string v5, "BLE_CHARGING"

    const/16 v6, 0xc

    const/16 v7, 0xc

    const-string v8, "epen_ble_charging_mode"

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v11, 0x0

    const-string v6, "EPEN_SAVING"

    const/16 v7, 0xd

    const/16 v8, 0xd

    const-string v9, "epen_saving_mode"

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_SAVING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const-string v7, "EPEN_MEMO"

    const/16 v8, 0xe

    const/16 v9, 0xe

    const-string/jumbo v10, "screen_off_memo_enable"

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_MEMO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const-string v8, "HAND_EDGE"

    const/16 v9, 0xf

    const/16 v10, 0xf

    const-string v11, "hand_edge"

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->HAND_EDGE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "EPEN_WCHARGING"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const-string v4, "epen_wcharging_mode"

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_WCHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v7, 0x0

    const-string v2, "ENABLED"

    const/16 v3, 0x11

    const/16 v4, 0x11

    const-string v5, "enabled"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ENABLED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const/4 v8, 0x0

    const-string v3, "CMD"

    const/16 v4, 0x12

    const/16 v5, 0x12

    const-string v6, "cmd"

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->$values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->value:I

    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->nodeName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->isExternalRead:Z

    iput-boolean p6, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->isExternalWrite:Z

    return-void
.end method

.method public static blacklist getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .locals 5

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .locals 1

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getNodeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->nodeName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isExternalRead()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->isExternalRead:Z

    return p0
.end method

.method public blacklist isExternalWrite()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->isExternalWrite:Z

    return p0
.end method

.method public blacklist toInt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->value:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->toInt()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
