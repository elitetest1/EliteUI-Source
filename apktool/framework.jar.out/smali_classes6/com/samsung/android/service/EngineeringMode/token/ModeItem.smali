.class public Lcom/samsung/android/service/EngineeringMode/token/ModeItem;
.super Ljava/lang/Object;
.source "ModeItem.java"


# instance fields
.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mGroupIndex:I

.field private blacklist mIndex:I

.field private blacklist mModeAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mModeAttribute:Ljava/util/ArrayList;

    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mIndex:I

    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mDescription:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mGroupIndex:I

    return-void
.end method


# virtual methods
.method public blacklist getAttribute(I)Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mModeAttribute:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;

    return-object p0
.end method

.method public blacklist getAttributeInfoNum()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mModeAttribute:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGroupIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mGroupIndex:I

    return p0
.end method

.method public blacklist getIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mIndex:I

    return p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist pushAttribute(II[B)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mModeAttribute:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;-><init>(II[B)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
