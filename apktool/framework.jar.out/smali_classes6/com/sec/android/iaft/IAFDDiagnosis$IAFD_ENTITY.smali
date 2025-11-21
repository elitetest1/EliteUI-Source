.class Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IAFD_ENTITY"
.end annotation


# instance fields
.field private blacklist enable:Z

.field private blacklist expID:I

.field private blacklist keyWord:Ljava/lang/String;

.field private blacklist ruleType:I

.field private blacklist rules:[Ljava/lang/String;

.field private blacklist suggestion:Ljava/lang/String;

.field private blacklist supportFlag:I

.field private blacklist tbID:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->enable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->expID:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkeyWord(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->keyWord:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->rules:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->supportFlag:I

    return p0
.end method

.method constructor blacklist <init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->initENTITY(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->initENTITY(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p8, v4, p0}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private blacklist initENTITY(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->tbID:I

    iput p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->expID:I

    iput-boolean p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->enable:Z

    iput-object p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->keyWord:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->rules:[Ljava/lang/String;

    const-string p3, ">,<"

    const/4 p4, 0x1

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p5, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->rules:[Ljava/lang/String;

    const-string/jumbo v0, "pkgName"

    aget-object v1, p5, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    goto :goto_0

    :cond_0
    const-string v0, "libs"

    aget-object v1, p5, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p5, 0x2

    iput p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    goto :goto_0

    :cond_1
    const-string v0, "32bit"

    aget-object p5, p5, p1

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p5, 0x4

    iput p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->suggestion:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->supportFlag:I

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    iput-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->suggestion:Ljava/lang/String;

    invoke-virtual {p6, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p1, p2, p1

    const-string/jumbo p3, "supportFlag"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    aget-object p1, p2, p4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->supportFlag:I

    :cond_3
    return-void
.end method
