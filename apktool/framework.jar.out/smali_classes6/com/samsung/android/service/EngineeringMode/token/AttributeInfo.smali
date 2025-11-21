.class public Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;
.super Ljava/lang/Object;
.source "AttributeInfo.java"


# instance fields
.field private blacklist mAttribute:[B

.field private blacklist mLen:I

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mType:I

    iput p2, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mLen:I

    iput-object p3, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mAttribute:[B

    return-void
.end method


# virtual methods
.method public blacklist getData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mAttribute:[B

    return-object p0
.end method

.method public blacklist getLen()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mLen:I

    return p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mType:I

    return p0
.end method
