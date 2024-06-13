using Amazon.Lambda.Core;
using Amazon.Lambda.RuntimeSupport;
using Amazon.Lambda.Serialization.SystemTextJson;
using System;
using System.Threading.Tasks;

// Assembly attribute to enable the Lambda function's JSON input to be converted into a .NET class.
[assembly: LambdaSerializer(typeof(DefaultLambdaJsonSerializer))]

namespace DotNetLambdaHelloWorld;

public class Function
{
    public static async Task Main(string[] args)
    {
        Func<string, ILambdaContext, string> func = FunctionHandler;
        using var handlerWrapper = HandlerWrapper.GetHandlerWrapper(func, new DefaultLambdaJsonSerializer());
        using var bootstrap = new LambdaBootstrap(handlerWrapper);
        await bootstrap.RunAsync();
    }

    public static string FunctionHandler(string input, ILambdaContext context)
    {
        return "Hello, World!";
    }
}