﻿using System;
using DShop.Common.Messages;
using Newtonsoft.Json;

namespace DShop.Services.Operations.Messages.Orders.Commands
{
    [MessageNamespace("orders")]
    public class CancelOrder : ICommand
    {
        public Guid Id { get; }
        public Guid CustomerId { get; }

        [JsonConstructor]
        public CancelOrder(Guid id, Guid customerId)
        {
            Id = id;
            CustomerId = customerId;
        }
    }
}
