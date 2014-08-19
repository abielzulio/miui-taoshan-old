.class public Lcom/android/internal/telephony/CallModify;
.super Ljava/lang/Object;
.source "CallModify.java"


# static fields
.field private static final ERR_CANCELLED:Ljava/lang/String; = "E_CANCELLED"

.field private static final ERR_GENERIC_FAILURE:Ljava/lang/String; = "E_GENERIC_FAILURE"

.field private static final ERR_IMS_DEREGISTERED:Ljava/lang/String; = "E_IMS_DEREGISTERED"

.field private static final ERR_INVALID_PARAMETER:Ljava/lang/String; = "E_INVALID_PARAMETER"

.field private static final ERR_RADIO_NOT_AVAILABLE:Ljava/lang/String; = "E_RADIO_NOT_AVAILABLE"

.field private static final ERR_REJECTED_BY_REMOTE:Ljava/lang/String; = "E_REJECTED_BY_REMOTE"

.field private static final ERR_REQUEST_NOT_SUPPORTED:Ljava/lang/String; = "E_REQUEST_NOT_SUPPORTED"

.field private static final ERR_UNUSED:Ljava/lang/String; = "E_UNUSED"

.field public static E_CANCELLED:I

.field public static E_GENERIC_FAILURE:I

.field public static E_IMS_DEREGISTERED:I

.field public static E_INVALID_PARAMETER:I

.field public static E_RADIO_NOT_AVAILABLE:I

.field public static E_REJECTED_BY_REMOTE:I

.field public static E_REQUEST_NOT_SUPPORTED:I

.field public static E_SUCCESS:I

.field public static E_UNUSED:I


# instance fields
.field public call_details:Lcom/android/internal/telephony/CallDetails;

.field public call_index:I

.field public error:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/CallModify;->E_SUCCESS:I

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/CallModify;->E_RADIO_NOT_AVAILABLE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/CallModify;->E_GENERIC_FAILURE:I

    const/4 v0, 0x6

    sput v0, Lcom/android/internal/telephony/CallModify;->E_REQUEST_NOT_SUPPORTED:I

    const/4 v0, 0x7

    sput v0, Lcom/android/internal/telephony/CallModify;->E_CANCELLED:I

    const/16 v0, 0x10

    sput v0, Lcom/android/internal/telephony/CallModify;->E_UNUSED:I

    const/16 v0, 0x1b

    sput v0, Lcom/android/internal/telephony/CallModify;->E_INVALID_PARAMETER:I

    const/16 v0, 0x1c

    sput v0, Lcom/android/internal/telephony/CallModify;->E_REJECTED_BY_REMOTE:I

    const/16 v0, 0x1d

    sput v0, Lcom/android/internal/telephony/CallModify;->E_IMS_DEREGISTERED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallModify;-><init>(Lcom/android/internal/telephony/CallDetails;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;I)V
    .locals 1
    .parameter "callDetails"
    .parameter "callIndex"

    .prologue
    sget v0, Lcom/android/internal/telephony/CallModify;->E_SUCCESS:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/CallModify;-><init>(Lcom/android/internal/telephony/CallDetails;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;II)V
    .locals 0
    .parameter "callDetails"
    .parameter "callIndex"
    .parameter "err"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iput p2, p0, Lcom/android/internal/telephony/CallModify;->call_index:I

    iput p3, p0, Lcom/android/internal/telephony/CallModify;->error:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallModify;)V
    .locals 1
    .parameter "callmodify"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallModify;->setCallDetails(Lcom/android/internal/telephony/CallDetails;)V

    iget v0, p1, Lcom/android/internal/telephony/CallModify;->call_index:I

    iput v0, p0, Lcom/android/internal/telephony/CallModify;->call_index:I

    iget v0, p1, Lcom/android/internal/telephony/CallModify;->error:I

    iput v0, p0, Lcom/android/internal/telephony/CallModify;->error:I

    return-void
.end method


# virtual methods
.method public convertErrorTypeToInt(Ljava/lang/String;)I
    .locals 1
    .parameter "errorType"

    .prologue
    const-string v0, "E_REJECTED_BY_REMOTE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/internal/telephony/CallModify;->E_REJECTED_BY_REMOTE:I

    :goto_0
    return v0

    :cond_0
    const-string v0, "E_INVALID_PARAMETER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/internal/telephony/CallModify;->E_INVALID_PARAMETER:I

    goto :goto_0

    :cond_1
    const-string v0, "E_CANCELLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/internal/telephony/CallModify;->E_CANCELLED:I

    goto :goto_0

    :cond_2
    const-string v0, "E_UNUSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/internal/telephony/CallModify;->E_UNUSED:I

    goto :goto_0

    :cond_3
    const-string v0, "E_RADIO_NOT_AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/internal/telephony/CallModify;->E_RADIO_NOT_AVAILABLE:I

    goto :goto_0

    :cond_4
    const-string v0, "E_REQUEST_NOT_SUPPORTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/android/internal/telephony/CallModify;->E_REQUEST_NOT_SUPPORTED:I

    goto :goto_0

    :cond_5
    const-string v0, "E_IMS_DEREGISTERED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/android/internal/telephony/CallModify;->E_IMS_DEREGISTERED:I

    goto :goto_0

    :cond_6
    sget v0, Lcom/android/internal/telephony/CallModify;->E_GENERIC_FAILURE:I

    goto :goto_0
.end method

.method public error()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/CallModify;->error:I

    sget v1, Lcom/android/internal/telephony/CallModify;->E_UNUSED:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/CallModify;->error:I

    sget v1, Lcom/android/internal/telephony/CallModify;->E_SUCCESS:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallDetails(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .parameter "calldetails"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CallDetails;-><init>(Lcom/android/internal/telephony/CallDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallModify;->call_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallModify;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
